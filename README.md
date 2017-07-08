Address Book
============

This is an address book program writen in C.

## Instalare
```
git clone https://github.com/mhcrnl/abook-old.git
cd abook-old
gcc book.c -o abook
./abook
```
## Functii
``` C
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
```
