
package Paws::Support::RefreshTrustedAdvisorCheck;
  use Moose;
  has CheckId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshTrustedAdvisorCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::RefreshTrustedAdvisorCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::RefreshTrustedAdvisorCheck - Arguments for method RefreshTrustedAdvisorCheck on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RefreshTrustedAdvisorCheck on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method RefreshTrustedAdvisorCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RefreshTrustedAdvisorCheck.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $RefreshTrustedAdvisorCheckResponse =
      $support->RefreshTrustedAdvisorCheck(
      CheckId => 'MyString',

      );

    # Results:
    my $Status = $RefreshTrustedAdvisorCheckResponse->Status;

    # Returns a L<Paws::Support::RefreshTrustedAdvisorCheckResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/RefreshTrustedAdvisorCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckId => Str

The unique identifier for the Trusted Advisor check to refresh.
B<Note:> Specifying the check ID of a check that is automatically
refreshed causes an C<InvalidParameterValue> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RefreshTrustedAdvisorCheck in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

