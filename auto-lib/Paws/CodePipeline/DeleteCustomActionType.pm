
package Paws::CodePipeline::DeleteCustomActionType;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category' , required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomActionType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::DeleteCustomActionType - Arguments for method DeleteCustomActionType on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomActionType on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method DeleteCustomActionType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomActionType.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->DeleteCustomActionType(
      Category => 'Source',
      Provider => 'MyActionProvider',
      Version  => 'MyVersion',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/DeleteCustomActionType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Category => Str

The category of the custom action that you want to delete, such as
source or deploy.

Valid values are: C<"Source">, C<"Build">, C<"Deploy">, C<"Test">, C<"Invoke">, C<"Approval">

=head2 B<REQUIRED> Provider => Str

The provider of the service used in the custom action, such as AWS
CodeDeploy.



=head2 B<REQUIRED> Version => Str

The version of the custom action to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomActionType in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

