__attribute__ ((visibility ("default")))int y;
void* p;


int main(){
    y = 1;
    p = (void*)5;
    return 0;
}