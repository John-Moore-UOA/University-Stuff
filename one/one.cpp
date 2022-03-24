int subone_five(int count, int *id) {
    cout << "Enter the ID to delete: ";
            int delete_id;
            cin >> delete_id;
            int pos = -1;
            for (int i = 0; i < count; i++) {
                if (id[i] == delete_id)
                    pos = i;
            }
            if (pos == -1) {
                cout << "Could not find ID: " << delete_id << endl;
            } else {
                for (int i = pos; i<count; i++) {
                    id[i] = id[i+1];
                } count--;

            }

        for (int i=0; i<count; i++)
            cout << id[i] << " ";
        cout << endl << endl;
        return -1;
}

int subtwo_five(int count, int *id) {

    int insert, pos;

    cout << "Insert: ";
    cin >> insert;

            for (int i=0; i<count; i++) {
                if (insert > id[i]) {
                    pos = i+1;
                }

            }
            for (int i=count; i>pos; i--) {
                id[i] = id[i-1];
            }

            id[pos] = insert;

            count++;
            for (int i=0; i<count; i++)
                cout << id[i] << " ";
            cout << endl << endl;
            return 1;
}

void five() {

    int id[100];
    int insert, count, option;

    cout << "Type in student ID numbers in ASCENDING order: ";

    while (insert != -1) {
        cin >> insert;
        id[count] = insert;
        count++;
    } count--;

    while (option != 2) {
        cout << "Enter an integer to Delete(0)  Insert(1)  or Quit(2) :";
        cin >> option;
        if (option == 0) {
            count += subone_five(count, id);

        }
        if (option == 1) {
            count += subtwo_five(count, id);

        }
    }
}


int main()
{
    five();

    return 0;
}
