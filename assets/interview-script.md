# Interview script · Microsoft Foundry case study

**Audience:** Ram · Zoox · UI/UX Internal Platforms
**Target length:** 10–12 min · then Q&A
**Tone:** confident, direct, "I" statements, no jargon

---

## Pacing cheat sheet

| Slide | Time | What you're doing |
|---|---|---|
| 1 Title | :15 | Warm hello, set scope |
| 2 Overview | :45 | Stats + roles, ground the project |
| 3 Process | :50 | Philosophy + map the talk |
| 4 Challenge | :40 | Problem framing + method |
| 5 Findings | :30 | Quick scan, point at row 1 |
| 6 **Guardrail crisis** | 1:15 | **HERO — slow down** |
| 7 Pivot | :35 | Bridge to design |
| 8 Design challenge | :45 | 3 frictions → 3 lessons |
| 9 Key decisions | 1:00 | Show your judgement |
| 10 Wireframes | :30 | Process artifacts, move quick |
| 11 Before | :25 | Set up the contrast |
| 12 **After (live)** | 1:15 | **BIG REVEAL — click around** |
| 13 Impact | :45 | Concrete + ambitious |
| 14 For Zoox | :40 | Land the plane |
| **Total** | **~11 min** | leave 4–5 for questions |

---

## Slide 1 — Title

> "Hi Ram, thanks for making time. I'm Jasmine. I'm going to walk you through a six-month case study from Microsoft Foundry, where I was a **UX Researcher and UX Designer co-op.** I'll cover the problem, the work, and what I'd bring to internal platforms at Zoox."

**[Hold ~3 seconds, then advance.]**

---

## Slide 2 — Project Overview

> "Quick context. Microsoft Foundry is Microsoft's enterprise AI platform — where developers build agents and pick models. I worked on two surfaces: **Foundry IQ** for agent creation, and the **Models page** for model discovery.
>
> January through March I was the researcher. April through June I converted to designer. Specifically — **I ran the first three of eight moderated sessions, took notes on the other five.** Then on the design side, **solo wireframes in Figma with Claude, team feedback loops, vibecoded HTML prototype.**
>
> Four numbers: 8 sessions, 11,403 models live on the platform, six months, one engineering hotfix that shipped to production from my research notes."

---

## Slide 3 — Design Process

> "Before the work, here's how I think about it. **Research informs design. Design pressure-tests research. Code validates both.** That's the philosophy. The timeline below shows four phases — this is also a map of the next ten minutes.
>
> Research, January to March. Pivot, mid-February — that's the live decision I want to talk about. Design, April to May. Prototype, May to June. Each one led to a concrete output that I'll show you."

**[Optional: gesture to the violet pulsing dot — "this pivot moment is where the case study earns its keep."]**

---

## Slide 4 — The Challenge

> "Problem: Foundry was launching to developers, but clicks weren't going far. People landed, poked around agent creation, and bounced. My job was to figure out where, and why.
>
> Three questions to answer — developer mental model when adding data, where attention lands first, when confusion becomes a hard blocker.
>
> Method was heuristic eval plus Think Aloud against one scenario: *'Help a baker optimize their recipe site with an AI agent.'* I ran the first three sessions, took notes on the remaining five. Dovetail for tagging, Nielsen 0-4 severity scale for ranking."

---

## Slide 5 — Findings

> "Six issues. One catastrophic, five fixable. **I want to spend a beat on the catastrophic one — because the way I handled it is the part I most want you to see.**"

**[Advance with intention.]**

---

## Slide 6 — Guardrail crisis · HERO MOMENT

> "Severity four. **Eight out of eight participants** couldn't create an agent. The default guardrail wasn't assigned — every session blocked. The fix is a one-line auto-assign on agent creation.
>
> Here's the part that mattered. I was running **session one** when this hit. Mid-test. No playbook. I had to make a real-time call — rescue the participant, or learn from the friction?
>
> **I let them struggle, documented every failure mode, then offered help.** Those notes went straight to engineering, and they shipped the hotfix off them.
>
> The quote at the bottom — Participant 1 said *'I don't know what this is, I got somewhere else altogether.'* That moment told the team I could think under pressure and that research could ship outcomes, not just recommendations."

**[Pause. This is the slide that earns the role.]**

---

## Slide 7 — Pivot

> "All eight completed the scenario once guardrails were unblocked. But post-task sentiment skewed **neutral to frustrated.** That's the gap between *usable* and *trusted.*
>
> Right after research wrapped, **the team wanted me on the design pod.** Same product, deeper into the build. The Models page was next."

---

## Slide 8 — Design Challenge

> "On the Models page, **picking a model should feel like a decision, not a search.**
>
> Three frictions, three lessons. One: hard to discover — Hugging Face taught me to filter first, model second. Two: hard to compare — Bedrock taught me to compare in the grid, not on a separate page. Three: region revealed too late — Bedrock and Vertex put region in every row. Those three lessons drove the next slide."

---

## Slide 9 — Key Design Decisions

> "Three forks in the road, and what I shipped on each.
>
> **One.** Search-first or filter-first. I considered a Hugging-Face-style search bar. **I chose task tiles plus a filter sidebar.** Why? Card sort showed developers rank region and capability *above* model names. They know what to build, not which model.
>
> **Two.** Where does region live? Considered keeping it in advanced filters or at deploy. **I chose region in the row, as a primary filter, and in the deploy drawer.** Why? 100% of usability friction was region-related. I couldn't risk burying it again.
>
> **Three.** Comparison page, modal, or tray? **I chose a persistent tray pinned to the grid.** Why? Separate pages kill context — the tray keeps comparison in the decision moment."

**[This is where you show judgement. Don't rush.]**

---

## Slide 10 — Wireframes

> "Those three decisions became mid-fi layouts. Home — task tiles. Discover — intent routing. Detail — region-aware deploy. **I built these solo in Figma with Claude, iterated on team feedback, then refined into the live prototype.**"

**[Move briskly — the wireframes are setup for the next slide.]**

---

## Slide 11 — Before

> "Quick contrast. This is **today's Foundry.** Browse on the left — 11,403 models in a long list. Detail on the right — walls of text, dense quick-facts panel, region hidden until deploy.
>
> Noisy. Wordy. Hard to decide."

---

## Slide 12 — After · LIVE PROTOTYPE

> "And this is the redesign. **This is live HTML — I built it with Claude.** You can click anywhere. Let me show you."

**[Click sequence — 30 seconds of demoing:]**

1. **Click a filter** → "Region promoted to primary filter."
2. **Hover/scan a model card** → "Region in the row, availability in the card, all decision-shaping facts visible — no clicks needed."
3. **Click 'View deployment info'** → "Deploy drawer — cost, context window, latency, deploy complexity, available regions. And this red message — *'Not available in East US 2'* — prevents broken deploys before they happen."
4. **Click compare on 2-3 models** → "Compare tray, persistent. Keeps comparison in flow — that was decision three."

> "I built this **independently** so the team could feel the interaction, not just look at Figma frames. No one asked. I did it because Figma can't show what code can."

**[Pause for any quick reaction.]**

---

## Slide 13 — Impact (so far)

> "Outcome so far — three buckets.
>
> **Shipped.** The guardrail hotfix is in production. Built from my session-one notes. Unblocks every new agent creation.
>
> **In flight.** The Models redesign has engineering buy-in. Working prototype validated. Three design decisions documented. Region-first IA confirmed via card sort and tree test.
>
> **Measuring next.** Once the redesign ships, I want to track time to first deploy, region-mismatch error rate at deploy, compare-tray usage per session, and detail-page to deploy conversion."

**[The "Measuring next" column signals you think about post-launch, not just shipping.]**

---

## Slide 14 — For Zoox

> "Three takeaways.
>
> **One — self-direction.** From the live guardrail call to building the prototype in code, I move work forward without waiting on tickets.
>
> **Two — cross-functional fluency.** Solo wireframes, team feedback, engineering buy-in, working prototype. Same vocabulary across every handoff.
>
> **Three — clarity for technical users.** Foundry users are developers under time pressure. That's the same discipline internal platforms at Zoox demand.
>
> Thanks Ram. Happy to take questions."

---

## Likely questions · prepared answers

### "Walk me through a moment you handled ambiguity."
> Guardrail crisis, session one. No precedent. I made the call to convert the test failure into research output. Engineering shipped the fix from my notes within days. Lesson: when something breaks live, document everything and feed it to the people who can act on it.

### "How do you collaborate with engineering?"
> Two examples. First, the guardrail hotfix — my session notes went straight to the engineering team and shipped as a default-state fix. Second, on the prototype — I built it in HTML so engineering could feel the interaction at feasibility-review depth, not just critique a Figma frame. It cut a feedback loop in half.

### "Why a HTML prototype instead of a Figma prototype?"
> Two reasons. Figma can't show real interaction — scroll-snap, compare-tray persistence, drawer state. And building it myself meant engineering and PM could pressure-test it the way they'd pressure-test real code. It's a better feasibility tool.

### "What would you do differently?"
> Two operational lessons. **Audit default system states earlier** — the guardrail was a new feature and we didn't account for its inheritance logic before testing. **Over-recruit by 1–2 participants** — we had two day-of reschedules and almost lost a session.

### "How did you use Claude?"
> Two ways. In Figma — Claude as a thinking partner for layout decisions and labeling. In code — Claude as a pair-programmer for the HTML prototype. I drove the design direction; Claude accelerated the execution. Same way I'd use any tool — to shorten the loop between intention and shipped output.

### "What metric would you most want to move?"
> **Region-mismatch error rate at deploy.** It was the single biggest source of friction in research. If the redesign cuts that to near zero, every other metric downstream — time-to-deploy, repeat use — improves with it.

### "What was the hardest design decision?"
> Decision 3 — comparison page vs. tray. The page approach was easier to spec out and felt more familiar from Vertex AI. The tray was riskier — persistent UI in a dense grid. I chose the tray because keeping comparison in flow matters more than a clean architecture diagram. That's the kind of trade-off internal platforms work asks you to make.

---

## Delivery notes

- **Open and close warmly.** First 10 seconds and last 10 seconds matter most.
- **Slow down on slides 6, 9, 12.** Those are your hero beats.
- **Move briskly on slides 5, 7, 10, 11.** They're connectors.
- **When you click in the prototype on slide 12, narrate what you're doing.** Don't let silence happen during the click sequence.
- **If you blank**, your safe phrase is: *"The key thing on this slide is —"* and read the H1 out loud.
- **End on "Happy to take questions."** Don't trail off into "yeah so that's pretty much it."
