# Generated from json/callargs_class.tt

package Paws::CodeDeploy::StopDeployment;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeDeploy::Types qw//;
  has AutoRollbackEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has DeploymentId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopDeployment');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeDeploy::StopDeploymentOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoRollbackEnabled' => {
                                          'type' => 'Bool'
                                        },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'DeploymentId' => 1
                  },
  'NameInRequest' => {
                       'AutoRollbackEnabled' => 'autoRollbackEnabled',
                       'DeploymentId' => 'deploymentId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::StopDeployment - Arguments for method StopDeployment on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDeployment on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method StopDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDeployment.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $StopDeploymentOutput = $codedeploy->StopDeployment(
      DeploymentId        => 'MyDeploymentId',
      AutoRollbackEnabled => 1,                  # OPTIONAL
    );

    # Results:
    my $Status        = $StopDeploymentOutput->Status;
    my $StatusMessage = $StopDeploymentOutput->StatusMessage;

    # Returns a L<Paws::CodeDeploy::StopDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/StopDeployment>

=head1 ATTRIBUTES


=head2 AutoRollbackEnabled => Bool

Indicates, when a deployment is stopped, whether instances that have
been updated should be rolled back to the previous version of the
application revision.



=head2 B<REQUIRED> DeploymentId => Str

The unique ID of a deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

