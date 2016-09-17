import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');
format longEng
model.modelPath('D:\diffusion_models\model');
ModelUtil.showProgress(true);
model.label('transient_2d.mph');
model.comments(['Transient 2d\n\nUntitled\n\nDiffusion coupled\n\n']);

model.modelNode.create('mod1');
model.modelNode('mod1').label('TMSR');
model.modelNode('mod1').defineLocalCoord(false);
