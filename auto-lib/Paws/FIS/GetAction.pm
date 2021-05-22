
package Paws::FIS::GetAction;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actions/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::GetActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetAction - Arguments for method GetAction on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAction on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method GetAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAction.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $GetActionResponse = $fis->GetAction(
      Id => 'MyActionId',

    );

    # Results:
    my $Action = $GetActionResponse->Action;

    # Returns a L<Paws::FIS::GetActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/GetAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAction in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

