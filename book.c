#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <errno.h>

typedef struct node {
  char name[64];
  char email[128];
  char letter;
  struct node * next;
} entry;

entry * book[26];

entry * insert_front(entry * a, char * name, char * address);
entry * insert_order(entry * a, char * name, char * address);
entry * find_name(entry * a, char * name);
entry * remove_name(entry * a, char * name);
entry * free_list(entry * a);
void print_list(entry * a);
void add_entry(char * name, char * address);
void search_entry(char * name);
void print_letter(char letter);
void print_book();
void delete_name(char * name);
void clear_book();
int get_letter(char a);

int fd,b,i,j;
char temp[256];
char temp2[256];
entry * temp3;
entry ** m;

int main(){
  umask(0000);
  temp3 = (entry *)malloc(sizeof(struct node));
  fd = open("data", O_RDWR);
  if (fd < 0){
    fd = open("data", O_CREAT | O_RDWR, 0644);
  }
  lseek(fd, 0, SEEK_SET);
  printf("opened data...\n");
  while(read(fd, temp3, sizeof(struct node))){
    add_entry(temp3->name, temp3->email);
    printf("loaded entry...\n");
  }
  printf("Please enter a name: ");
  scanf("%s",temp);
  printf("Please enter email: ");
  scanf("%s", temp2);
  add_entry(temp,temp2);
  printf("\n**COMPLETE BOOK**");
  print_book();
  lseek(fd, 0, SEEK_SET);
  for (m = book; m < &book[25]; m++){
    entry * z;
    z = *m;
    while ((long)z){
      write(fd, z, sizeof(struct node));
      z = z->next;
    }
  }
  printf("saved entry...\n\n");
  close(fd);
  /* printf("\n**Adding Me,Mike,Briana**\n");
     add_entry("Me", "sgreco94@verizon.net");
     add_entry("Mike", "mike@website.com");
     add_entry("Briana", "blg820@aol.com"); 
     printf("**Printing entire book**\n");
     print_book();
     printf("**Printing letter M**\n");
     print_letter('m');
     printf("**Printing letter B**\n");
     print_letter('b');
     printf("**Printing letter X**\n");
     print_letter('x');
     printf("**Searching for 'Me'**\n");
     search_entry("Me");
     printf("**Searching for 'Jim'**\n");
     search_entry("Jim");
     printf("**Deleting 'Briana'**\n");
     delete_name("Briana");
     printf("**Deleting 'Jim'**\n");
     delete_name("Jim");
     printf("**Printing entire book**\n");
     print_book();
     printf("**Clearing book**\n");
     clear_book();
     printf("**Printing entire book**\n");
     print_book();
  */
  /*LIST TESTS
    
    entry * a;
    a = NULL;
    printf("**Testing List Functions**\n");
    a = insert_order(a, "Bob", "bob@website.com");
    a = insert_order(a, "Mom", "mom@website.com");
    a = insert_order(a, "Ant", "ant@website.com");
    a = insert_order(a, "Zip", "zzz@website.com");
    a = insert_order(a, "Dad", "dad@website.com");
    print_list(a);
    printf("**Removing Zip (in list) & Joe (not in list)**\n");
    a = remove_name(a, "Zip");
    a = remove_name(a, "Joe");
    print_list(a);
    printf("**Freeing list (should return null)**\n");
    a = free_list(a);
    print_list(a);
    printf("end\n");*/
  return 1;
}

/*********************
****BOOK FUNCTIONS****
*********************/

void clear_book(){
  int i;
  for (i = 0; i < 26; i++){
    book[i] = free_list(book[i]);
  }
}

void delete_name(char * n){
  int i;
  i = get_letter(n[0]);
  book[i] = remove_name(book[i],n);
}


void search_entry(char * n){
  entry * ans;
  int x;
  x = get_letter(n[0]);
  ans = find_name(book[x],n);
  if (!ans){
    printf("No entry found\n");
  }
  else printf("%s: %s\n\n", ans->name, ans->email);
}

void add_entry(char * n, char * a){
  int i;
  i = get_letter(n[0]);  
  book[i] = insert_order(book[i],n,a);
}

void print_letter(char a){
  int j;
  j = get_letter(a);
  print_list(book[j]);
  printf("\n");
}

void print_book(){
  entry ** a;
  printf("\n");
  for (a = book; a <= &book[25] ; a++ ){
    print_list(*a);
  }
  printf("\n");
}


/*********************
****LIST FUNCTIONS****
*********************/

entry * insert_order(entry * a, char * n, char * ad){
  entry * ans = (entry *)malloc(sizeof(struct node));
  if (!a){
    return insert_front(a,n,ad);
  }
  strcpy(ans->name,n);
  strcpy(ans->email,ad);
  ans->letter = n[0];
  entry * c;
  entry * b;
  c = a;
  b = a;
  while (a->next){
    b = a;
    if (strcmp(a->name,ans->name) >= 0){
      a = a->next;
    }
    else break;
  }
  ans->next = b->next;
  b->next = ans;
  return c;
}

entry * remove_name(entry * a, char * n){
  entry * b = find_name(a,n);
  entry * ans = a;
  if (b == 0){
    return ans;
  }
  else if (a == b){
    return 0;
  }
  else for (; a->next != b; a = a->next);
  a->next = b->next;
  free(b);
  return ans;
}

entry * free_list(entry * a){
  entry * b;
  while ((long)a){
    b = a;
    a = a->next;
    free(b);
  }
  return a;
}
    

entry * find_name(entry * a, char * n){
  while (a){
    if (!strcmp(a->name,n)){
      return a;
    }
    a = a->next;
  }
  return 0;
}


entry * insert_front(entry * a, char * n, char * ad){
  entry * ans = (entry *)malloc(sizeof(struct node));
  strcpy(ans->name,n);
  strcpy(ans->email,ad);
  ans->letter = n[0];
  (*ans).next = a;
  return ans;
}

void print_list(entry * list){
  entry * a;
  a = list;
  while ((long)a){
    printf("%s: %s\n", a->name, a->email);
    a = a->next;
  }
}

int get_letter(char a){
  if ((short)a >= 97){
    return ((short)a) - 97;
  }
  else return ((short)a) - 65;
}
