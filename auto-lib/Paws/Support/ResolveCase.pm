
package Paws::Support::ResolveCase;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::ResolveCaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::ResolveCase - Arguments for method ResolveCase on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResolveCase on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method ResolveCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResolveCase.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $ResolveCaseResponse = $support->ResolveCase(
      CaseId => 'MyCaseId',    # OPTIONAL
    );

    # Results:
    my $FinalCaseStatus   = $ResolveCaseResponse->FinalCaseStatus;
    my $InitialCaseStatus = $ResolveCaseResponse->InitialCaseStatus;

    # Returns a L<Paws::Support::ResolveCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/ResolveCase>

=head1 ATTRIBUTES


=head2 CaseId => Str

The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResolveCase in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

