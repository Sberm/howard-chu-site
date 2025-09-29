import styles from './misc.module.css';
import Link from '@docusaurus/Link';

const ButtonList = [
    {
        name: 'Blog',
        url: '/docs/blogs',
    },
    {
        name: 'Doc',
        url: '/docs/docs',
    },
    {
        name: 'Resume',
        url: '/docs/docs/resume',
    },
];

function Button({name, url}) {
    return (
        <div className={styles.button}>
            <Link
                className="button button--secondary button--lg"
                to={url}>
                {name}
            </Link>
        </div>
    );
}

export default function Buttons() {
    return (
    <>
        {ButtonList.map((props, idx) => (
            <Button key={idx} {...props} />
        ))}
    </>
    );
}