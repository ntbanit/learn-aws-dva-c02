const app = Vue.createApp({
    data() {
        return {
            firstGoal: 'Get AWS DVA-C02!',
            secondGoal: 'Become a good developer!',
            s3Link: 'https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html',
            files: [
                "question.jpg",
                "enjoy-coffee.png",
                "test.pdf"
            ]
        };
    },
    methods: {
        outputGoal() {
            const randomNumber = Math.random();
            if (randomNumber < 0.5) {
                return this.firstGoal;
            } else {
                return this.secondGoal;
            }
        },
    }
});

app.mount('#user-goal');

