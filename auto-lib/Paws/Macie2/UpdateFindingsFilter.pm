
package Paws::Macie2::UpdateFindingsFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FindingCriteria => (is => 'ro', isa => 'Paws::Macie2::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Position => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'position');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFindingsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingsfilters/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateFindingsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateFindingsFilter - Arguments for method UpdateFindingsFilter on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFindingsFilter on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateFindingsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFindingsFilter.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateFindingsFilterResponse = $macie2->UpdateFindingsFilter(
      Id              => 'My__string',
      Action          => 'ARCHIVE',       # OPTIONAL
      Description     => 'My__string',    # OPTIONAL
      FindingCriteria => {
        Criterion => {
          'My__string' => {
            Eq           => [ 'My__string', ... ],    # OPTIONAL
            EqExactMatch => [ 'My__string', ... ],    # OPTIONAL
            Gt  => 1,                                 # OPTIONAL
            Gte => 1,                                 # OPTIONAL
            Lt  => 1,                                 # OPTIONAL
            Lte => 1,                                 # OPTIONAL
            Neq => [ 'My__string', ... ],             # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      Name     => 'My__string',    # OPTIONAL
      Position => 1,               # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateFindingsFilterResponse->Arn;
    my $Id  = $UpdateFindingsFilterResponse->Id;

    # Returns a L<Paws::Macie2::UpdateFindingsFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateFindingsFilter>

=head1 ATTRIBUTES


=head2 Action => Str

The action to perform on findings that meet the filter criteria
(findingCriteria). Valid values are: ARCHIVE, suppress (automatically
archive) the findings; and, NOOP, don't perform any action on the
findings.

Valid values are: C<"ARCHIVE">, C<"NOOP">

=head2 Description => Str

A custom description of the filter. The description can contain as many
as 512 characters.

We strongly recommend that you avoid including any sensitive data in
the description of a filter. Other users might be able to see the
filter's description, depending on the actions that they're allowed to
perform in Amazon Macie.



=head2 FindingCriteria => L<Paws::Macie2::FindingCriteria>

The criteria to use to filter findings.



=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource or account that the
request applies to.



=head2 Name => Str

A custom name for the filter. The name must contain at least 3
characters and can contain as many as 64 characters.

We strongly recommend that you avoid including any sensitive data in
the name of a filter. Other users might be able to see the filter's
name, depending on the actions that they're allowed to perform in
Amazon Macie.



=head2 Position => Int

The position of the filter in the list of saved filters on the Amazon
Macie console. This value also determines the order in which the filter
is applied to findings, relative to other filters that are also applied
to the findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFindingsFilter in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

