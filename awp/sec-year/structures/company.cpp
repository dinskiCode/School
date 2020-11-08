#include <iostream>

using namespace std;

int main() {
    struct personal_data {
        string name;
        string address;
    };

    struct payment {
        double value;
        string comment;
    };

    struct developer {
        personal_data data;
        string programming_language;
        bool is_senior;
        payment compensation[2];
    };

    struct manager {
        personal_data data;
        developer devs[10];
        payment compensation[5];
    };


    struct department {
        string description;
        developer devs[10]; //devs in department and in manager bc manager might manage two or more departments
    };

    struct manager_department_mapping {
        manager manager[2]; // department might have two managers (one representative)
        department department;
    };

    struct company {
        manager_department_mapping mapping;
    };

    manager ceo;
    payment ceo_comp = {100000, "ceo-compensation for 2019"};
    personal_data ceo_data = {"Mark Zucc", "Mulholland Drive"};
    ceo.compensation[4] = ceo_comp;

    developer dev;
    personal_data dev_data = {"John Doe", "Hollywood Boulevard"};
    dev.data = dev_data;
    //dev.programming_language = "cpp";
    dev.is_senior = true;
    payment dev_payment_2018 = {60000, "payment of senior dev 2018"};
    payment dev_payment_2019 = {63000, "payment of senior dev 2019"};
    dev.compensation[0] = dev_payment_2018;
    dev.compensation[1] = dev_payment_2019;

    ceo.devs[0] = dev;

    department department_managed_by_ceo;
    department_managed_by_ceo.description = "general department";
    department_managed_by_ceo.devs[0] = dev;

    manager_department_mapping mapping;
    mapping.manager[0] = ceo;
    mapping.department = department_managed_by_ceo;

    company my_company;
    my_company.mapping = mapping;

    cout << my_company.mapping.manager[0].devs[0].compensation[0].comment << endl; // prints 'payment of senior dev 2018'
    cout << my_company.mapping.manager[0].devs[0].programming_language; // prints empty line

    cout << endl;
    return 1;
}