# MUI

+ `@mui/material`

+ `@emotion/react`

+ `@emotion/styled`

---

## Emotion

https://emotion.sh/docs/introduction

### `@emotion/react`

```tsx
import { css, jsx } from '@emotion/react'

const color = 'white'

render(
  <div
    css={css`
      padding: 32px;
      background-color: hotpink;
      font-size: 24px;
      border-radius: 4px;
      &:hover {
        color: ${color};
      }
    `}
  >
    Hover to change color.
  </div>
)
```

### `@emotion/styled`

```tsx
import styled from '@emotion/styled'

const Button = styled.button`
  padding: 32px;
  background-color: hotpink;
  font-size: 24px;
  border-radius: 4px;
  color: black;
  font-weight: bold;
  &:hover {
    color: white;
  }
`

render(<Button>This my button component.</Button>)
```

+ Emotion can be used directly, but using `styled` from `@mui/material/styles` is preferred, it provides better integration with MUI. ([styled() - MUI](https://mui.com/system/styled/))

+ The `styled` function is an extension of the `styled` utility provided by the underlying style library used – either emotion or styled-components. It is guaranteed that it will produce the same output as the `styled` function coming from the style library for the same input.

+ In order to use Components as selectors please read the documentation (previous provided URL)

---

## MUI System

* [MUI System - MUI](https://mui.com/system/basics/) (Documentation)
+ [**Properties - MUI**](https://mui.com/system/properties/) (CSS Superset)

+ You can send arrays, objects, and functions

+ All core MUI components support `system` through `sx`
* These components are designed to solve CSS problems, they are CSS component utilities. They support `system` as props.
  
  + **Box**
  
  + **Grid** 
  
  + **Stack**
  
  + **Typography** 
+ Breakpoints
  
  + xs
  
  + sm
  
  + md
  
  + lg
  
  + xl

```tsx
<Box
  sx={{
    bgcolor: 'background.paper',
    boxShadow: 1,
    borderRadius: 1,
    p: 2,
    minWidth: 300,
  }}
>
  <Box sx={{ color: 'text.secondary' }}>Sessions</Box>
  <Box sx={{ color: 'text.primary', fontSize: 34, fontWeight: 'medium' }}>
    98.3 K
  </Box>
  <Box
    component={TrendingUpIcon}
    sx={{ color: 'success.dark', fontSize: 16, verticalAlign: 'sub' }}
  />
  <Box
    sx={{
      color: 'success.dark',
      display: 'inline',
      fontWeight: 'medium',
      mx: 0.5,
    }}
  >
    18.77%
  </Box>
  <Box sx={{ color: 'text.secondary', display: 'inline', fontSize: 12 }}>
    vs. last week
  </Box>
</Box>
```

Using `Box` and the its `component` prop to create a new component.

```tsx
const StyledButton = () => <Box 
    component="button" sx={{ border: '1px dashed grey' }}
    >
    Save
</Box>
```

---

## Styled API vs MUI System

From MUI Documentation (URL provided in previous section)

> System Problem solved
> 
> The system focus on solving 3 main problems:
> 
> **1. Switching context wastes time.**
> 
> There's no need to constantly jump between the usage of the styled components and where they are defined. With the system, those descriptions are right where you need them.
> 
> **2. Naming things is hard.**
> 
> Have you ever found yourself struggling to find a good name for a styled component? The system maps the styles directly to the element. All you have to do is worry about actual style properties.
> 
> **3. Enforcing consistency in UIs is hard.**
> 
> This is especially true when more than one person is building the application, as there has to be some coordination amongst members of the team regarding the choice of design tokens and how they are used, what parts of the theme structure should be used with what CSS properties, and so on.
> 
> The **system** provides **direct access to the value in the theme**. It makes it **easier to design with constraints**.

> When to use it?
> 
> - **styled-components**: the API is great to build components that need to support a wide variety of contexts. These components are used in many different parts of the application and support different combinations of props.
> - **`sx` prop**: the API is great to apply one-off styles. It's called "utility" for this reason.

Extra notes [styled() - MUI](https://mui.com/system/styled/) (same URL provied in emotion section)

+ `sx` provides more shortcuts than `styled`
  
  + `mx: 1` doesn't work in `styled`

+ The `style` definition varies slightly
  
  + ```js
    padding: 1, // means "1px", NOT "theme.spacing(1)"
    ```

---

## Grid

* When no value is given to a breakpoint it will auto-layout, equitably share the available space

* Set one of the size breakpoint props to `"auto"` to size a column based on the natural width of its content.
+ A value given to a breakpoint applies to all the other breakpoints wider than it
  
  + For example, `xs={12}`sizes a component to occupy the whole viewport width regardless of its size.

+ **Defining an explicit width to a Grid element that is flex container**, flex item, and has spacing at the same time lead to unexpected behavior, avoid doing it: `<Grid spacing={1} container item xs={12}>`

+ also supports **responsive values**
  
  + `spacing`
  
  + `rowSpacing`
  
  + `columnSpacing`
  
  + `direction`
  
  + `columns`

+ When using a responsive `columns` prop, each grid item needs its corresponding breakpoint. For instance, this is not working. The grid item misses the value for `md`
  
  ```tsx
  <Grid container columns={{ xs: 4, md: 12 }}>
    <Grid item xs={2} />
  </Grid>
  ```
* Flex-box properties (`system`)
  
  * justifyContent
  
  * alignItems 

* **Limitations**: [React Grid component - Material UI](https://mui.com/material-ui/react-grid/#limitations)
  
  * `noWrap` texts within Grid items
  
  * The `xs`, `sm`, `md`, `lg`, and `xl` props are **not supported** within `direction="column"`and `direction="column-reverse"` containers.

---

## Typography

```tsx
<Typography variant="body1" gutterBottom>
    body1. Lorem ipsum dolor sit amet
</Typography>
```

+ `typography` is also a `system` prop

```tsx

```

+ In addition to using the default typography variants, you can add custom ones, or disable any you don't need

## Theming

* **READ THE DOCUMENTATION INSTEAD**
+ [Default Theme - Material UI](https://mui.com/material-ui/customization/default-theme/?expand-path=$.palette)

+ Variables
  
  + palette
  
  + typography
  
  + spacing
  
  + breakpoints
  
  + zIndex
  
  + transitions
  
  + components

+ When using MUI's theme with [MUI System](https://mui.com/system/basics/) or [any other styling solution](https://mui.com/material-ui/guides/interoperability/#themeprovider), it can be convenient to add additional variables to the theme so you can use them everywhere. For instance:

```jsx
const theme = createTheme({
  status: {
    danger: orange[500],
  },
});
```

+ Typescript requires module augmentation
  
  ```tsx
  declare module '@mui/material/styles' {
    interface Theme {
      status: {
        danger: string;
      };
    }
    // allow configuration using `createTheme`
    interface ThemeOptions {
      status?: {
        danger?: string;
      };
    }
  }
  ```
