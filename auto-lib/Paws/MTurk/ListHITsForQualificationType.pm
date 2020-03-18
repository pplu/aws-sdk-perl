
package Paws::MTurk::ListHITsForQualificationType;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHITsForQualificationType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListHITsForQualificationTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListHITsForQualificationType - Arguments for method ListHITsForQualificationType on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHITsForQualificationType on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListHITsForQualificationType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHITsForQualificationType.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListHITsForQualificationTypeResponse =
      $mturk -requester->ListHITsForQualificationType(
      QualificationTypeId => 'MyEntityId',
      MaxResults          => 1,                      # OPTIONAL
      NextToken           => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $HITs       = $ListHITsForQualificationTypeResponse->HITs;
    my $NextToken  = $ListHITsForQualificationTypeResponse->NextToken;
    my $NumResults = $ListHITsForQualificationTypeResponse->NumResults;

    # Returns a L<Paws::MTurk::ListHITsForQualificationTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListHITsForQualificationType>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Limit the number of results returned.



=head2 NextToken => Str

Pagination Token



=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the Qualification type to use when querying HITs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHITsForQualificationType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

