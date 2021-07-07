
package Paws::CodeStarNotifications::ListEventTypes;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::ListEventTypesFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listEventTypes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::ListEventTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListEventTypes - Arguments for method ListEventTypes on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventTypes on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method ListEventTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventTypes.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $ListEventTypesResult = $codestar -notifications->ListEventTypes(
      Filters => [
        {
          Name  => 'RESOURCE_TYPE',    # values: RESOURCE_TYPE, SERVICE_NAME
          Value => 'MyListEventTypesFilterValue',

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $EventTypes = $ListEventTypesResult->EventTypes;
    my $NextToken  = $ListEventTypesResult->NextToken;

    # Returns a L<Paws::CodeStarNotifications::ListEventTypesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/ListEventTypes>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::CodeStarNotifications::ListEventTypesFilter>]

The filters to use to return information by service or resource type.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.
The default number is 50. The maximum number of results that can be
returned is 100.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventTypes in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

