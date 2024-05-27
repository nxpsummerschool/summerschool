
int count=0;
int previous_state=0;
while (1)
{
    new_state=read_pin()
    if (new_state!=previous_state)
    {
        count++;
        for (volatile int i=0;i<=0xFF;i++);
    }
    else 
    {
        count=0
    }
    if (count>20)
    {
        count=0;
        do_something();
        previous_state=new_state;
    }
}
