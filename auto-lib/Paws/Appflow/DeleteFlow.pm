
package Paws::Appflow::DeleteFlow;
  use Moose;
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DeleteFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DeleteFlow - Arguments for method DeleteFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DeleteFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DeleteFlowResponse = $appflow->DeleteFlow(
      FlowName    => 'MyFlowName',
      ForceDelete => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DeleteFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.



=head2 ForceDelete => Bool

Indicates whether Amazon AppFlow should delete the flow, even if it is
currently in use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

