
package Paws::Support::DescribeTrustedAdvisorChecks;
  use Moose;
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorChecks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorChecksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorChecks - Arguments for method DescribeTrustedAdvisorChecks on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustedAdvisorChecks on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeTrustedAdvisorChecks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustedAdvisorChecks.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeTrustedAdvisorChecksResponse =
      $support->DescribeTrustedAdvisorChecks(
      Language => 'MyString',

      );

    # Results:
    my $Checks = $DescribeTrustedAdvisorChecksResponse->Checks;

    # Returns a L<Paws::Support::DescribeTrustedAdvisorChecksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeTrustedAdvisorChecks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Language => Str

The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustedAdvisorChecks in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

