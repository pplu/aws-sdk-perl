
package Paws::MTurk::ListQualificationTypes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has MustBeOwnedByCaller => (is => 'ro', isa => 'Bool');
  has MustBeRequestable => (is => 'ro', isa => 'Bool', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Query => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQualificationTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListQualificationTypesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListQualificationTypes - Arguments for method ListQualificationTypes on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQualificationTypes on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListQualificationTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQualificationTypes.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListQualificationTypesResponse =
      $mturk -requester->ListQualificationTypes(
      MustBeRequestable   => 1,
      MaxResults          => 1,                      # OPTIONAL
      MustBeOwnedByCaller => 1,                      # OPTIONAL
      NextToken           => 'MyPaginationToken',    # OPTIONAL
      Query               => 'MyString',             # OPTIONAL
      );

    # Results:
    my $NextToken  = $ListQualificationTypesResponse->NextToken;
    my $NumResults = $ListQualificationTypesResponse->NumResults;
    my $QualificationTypes =
      $ListQualificationTypesResponse->QualificationTypes;

    # Returns a L<Paws::MTurk::ListQualificationTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListQualificationTypes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 MustBeOwnedByCaller => Bool

Specifies that only Qualification types that the Requester created are
returned. If false, the operation returns all Qualification types.



=head2 B<REQUIRED> MustBeRequestable => Bool

Specifies that only Qualification types that a user can request through
the Amazon Mechanical Turk web site, such as by taking a Qualification
test, are returned as results of the search. Some Qualification types,
such as those assigned automatically by the system, cannot be requested
directly by users. If false, all Qualification types, including those
managed by the system, are considered. Valid values are True | False.



=head2 NextToken => Str





=head2 Query => Str

A text query against all of the searchable attributes of Qualification
types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQualificationTypes in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

