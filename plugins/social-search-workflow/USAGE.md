# 使用指南 — social-search-workflow

## 如何使用插件组件

### 1. 安装插件

在项目根目录或 `~/.claude/` 下添加 `.mcp.json` 或直接将插件目录加入 Claude Code 的插件路径。最简单的方式是在你的工作项目中引用本地路径：

```bash
# 在你的工作项目中
claude plugin install /path/to/claude-plugins-official/plugins/social-search-workflow
```

---

### 2. 使用斜杠命令

在 Claude Code 对话框直接输入：

```
/keyword-research 完美日记

/content-brief 完美日记 7

/publish-checklist 「口红测评」5支平价口红真实对比
```

---

### 3. 唤起代理

**策略顾问**（适合制定月度计划/复盘）：

```
调用 search-strategist 代理，帮我做一个小红书搜索指数增长计划
```

**内容优化**（适合改文案）：

```
调用 content-optimizer 代理，帮我优化这篇小红书：
[粘贴你的文案]
```

---

### 4. 技能自动激活

无需手动操作。当你在对话中提到以下词汇时，技能会自动注入参考框架：

> 搜索指数、小红书SEO、关键词布局、话题标签、抖音搜索…

---

### 推荐使用路径

```
第一次做品牌        → /keyword-research
↓ 有了关键词矩阵
制定内容计划        → /content-brief
↓ 内容写完了
发布前              → /publish-checklist
↓ 数据不好/要做整体策略
复盘/规划           → search-strategist 代理
↓ 已有文案需要优化
改稿                → content-optimizer 代理
```
