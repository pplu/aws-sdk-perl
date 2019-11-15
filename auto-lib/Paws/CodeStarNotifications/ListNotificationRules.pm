
package Paws::CodeStarNotifications::ListNotificationRules;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::ListNotificationRulesFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotificationRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listNotificationRules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::ListNotificationRulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListNotificationRules - Arguments for method ListNotificationRules on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotificationRules on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method ListNotificationRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotificationRules.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $ListNotificationRulesResult =
      $codestar -notifications->ListNotificationRules(
      Filters => [
        {
          Name => 'EVENT_TYPE_ID'
          ,    # values: EVENT_TYPE_ID, CREATED_BY, RESOURCE, TARGET_ADDRESS
          Value => 'MyListNotificationRulesFilterValue',

        },
        ...
      ],       # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken         = $ListNotificationRulesResult->NextToken;
    my $NotificationRules = $ListNotificationRulesResult->NotificationRules;

 # Returns a L<Paws::CodeStarNotifications::ListNotificationRulesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/ListNotificationRules>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::CodeStarNotifications::ListNotificationRulesFilter>]

The filters to use to return information by service or resource type.
For valid values, see ListNotificationRulesFilter.

A filter with the same name can appear more than once when used with OR
statements. Filters with different names should be applied with AND
statements.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.
The maximum number of results that can be returned is 100.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotificationRules in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

