
package Paws::Config::GetResourceConfigHistory;
  use Moose;
  has ChronologicalOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'chronologicalOrder' );
  has EarlierTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'earlierTime' );
  has LaterTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'laterTime' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceConfigHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetResourceConfigHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetResourceConfigHistory - Arguments for method GetResourceConfigHistory on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceConfigHistory on the 
AWS Config service. Use the attributes of this class
as arguments to method GetResourceConfigHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceConfigHistory.

As an example:

  $service_obj->GetResourceConfigHistory(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 ChronologicalOrder => Str

  The chronological order for configuration items listed. By default the
results are listed in reverse chronological order.

=head2 EarlierTime => Str

  The time stamp that indicates an earlier time. If not specified, the
action returns paginated results that contain configuration items that
start from when the first configuration item was recorded.

=head2 LaterTime => Str

  The time stamp that indicates a later time. If not specified, current
time is taken.

=head2 Limit => Int

  The maximum number of configuration items returned on each page. The
default is 10. You cannot specify a limit greater than 100. If you
specify 0, AWS Config uses the default.

=head2 NextToken => Str

  The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.

=head2 B<REQUIRED> ResourceId => Str

  The ID of the resource (for example., C<sg-xxxxxx>).

=head2 B<REQUIRED> ResourceType => Str

  The resource type.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceConfigHistory in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

