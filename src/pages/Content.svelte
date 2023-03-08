<script>
    import {Styles, Row, Col, Container} from 'sveltestrap';
    import { Button } from '../components';
    let isOpen = false;
    const toggle = () => (isOpen = !isOpen);
</script>

<div class="Content">
    a bunch of buttons
    <Button>swanky1</Button>
    <Button>2</Button>
    <Button>3</Button>
    <Button>4</Button>
    <div id="toc">
        TOC
    </div>
    <div id="main">
        Dependency tree or some such
    </div>
</div>

<Styles />


