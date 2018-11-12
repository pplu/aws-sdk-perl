
package Paws::DS::ListLogSubscriptions;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLogSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ListLogSubscriptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListLogSubscriptions - Arguments for method ListLogSubscriptions on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLogSubscriptions on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ListLogSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLogSubscriptions.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ListLogSubscriptionsResult = $ds->ListLogSubscriptions(
      DirectoryId => 'MyDirectoryId',    # OPTIONAL
      Limit       => 1,                  # OPTIONAL
      NextToken   => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $LogSubscriptions = $ListLogSubscriptionsResult->LogSubscriptions;
    my $NextToken        = $ListLogSubscriptionsResult->NextToken;

    # Returns a L<Paws::DS::ListLogSubscriptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ListLogSubscriptions>

=head1 ATTRIBUTES


=head2 DirectoryId => Str

If a I<DirectoryID> is provided, lists only the log subscription
associated with that directory. If no I<DirectoryId> is provided, lists
all log subscriptions associated with your AWS account. If there are no
log subscriptions for the AWS account or the directory, an empty list
will be returned.



=head2 Limit => Int

The maximum number of items returned.



=head2 NextToken => Str

The token for the next set of items to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLogSubscriptions in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

