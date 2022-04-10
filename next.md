# Next

- Server-Side Rendering (pre rendering)
- Static Site Generation (pre rendering)
- Client-Side Rendering

> Note: You can opt to use client-side rendering for specific components in your Next.js application by choosing to fetch data with React’s useEffect() or a data fetching hook such as useSWR.

> Next.js pre-renders every page by default

> In Next.js, you can opt to server-side render pages by using getServerSideProps.

> In Next.js, you can opt to statically generate pages by using getStaticProps.

Image has Automatic Image Optimization

```jsx
import Image from 'next/image'

const YourComponent = () => (
  <Image
    src="/images/profile.jpg" // Route of the image file
    height={144} // Desired size with correct aspect ratio
    width={144} // Desired size with correct aspect ratio
    alt="Your Name"
  />
)
```

## App `(_app.tsx)`

Top-level component which will be common across all the different pages. You can use this App component to keep state when navigating between pages, for example.

In Next.js, you can add global CSS files by importing them from `pages/_app.js`. You cannot import global CSS anywhere else.

```jsx
import '../styles/global.css'

export default function App({ Component, pageProps }) {
  return <Component {...pageProps} />
}
```

## CSS

Built-in support

- CSS Modules
- Sass
- styled-jsx 

Out of the box, with no configuration, Next.js compiles CSS using PostCSS.

To customize PostCSS config, you can create a top-level file called postcss.config.js.

Out of the box, Next.js allows you to import Sass using both the .scss and .sass extensions. You can use component-level Sass via CSS Modules and the .module.scss or .module.sass extension.

Before you can use Next.js' built-in Sass support, be sure to install sass:

### CSS Modules

```
import styles from './layout.module.css'

export default function Layout({ children }) {
  return <div className={styles.container}>{children}</div>
}
```

## `getStaticProps`

## `getServerSideProps`

## Deploy

https://vercel.com/