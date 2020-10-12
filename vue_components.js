let tab_item = {
    props: ['tab_link', 'href'],
    methods: {
    },
    delimiters: ['[[', ']]'],
    template: '#tab-item-template'
};



let content_item = {
    props: ['content', 'id'],
    delimiters: ['[[', ']]'],
    template: '#content-item-template'
}



let card_panel = {
    props: ['card_panel_prop'],
    data() {
        return {
            data_card_panel: this.card_panel_prop,
        }
    },
    components: {
        'tab-item': tab_item,
        'content-item': content_item,
    },
    delimiters: ['[[', ']]'],
    template: '#card-panel-template',
    methods: {
    }
};



var TestApp = new Vue({
    el: '#app-1',
    delimiters: ['[[', ']]'],
    data: {
        data_app : {
            tab_links: [
                {href: '#href-con-1', link: 'first'},
                {href: '#href-con-2', link: 'second'},
                {href: '#href-con-3', link: 'third'},
            ],
            contents: [
                { id: 'href-con-1', content: 'content 1'},
                { id: 'href-con-2', content: 'content 2'},
                { id: 'href-con-3', content: 'content 3'},
            ]
        }
    },
    components: {
        'card-panel': card_panel,
    },
    methods: {
        //
    }
});

