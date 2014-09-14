
package Aws::OpsWorks::UpdateLayer {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;