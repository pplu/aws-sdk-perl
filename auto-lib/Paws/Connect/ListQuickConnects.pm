
package Paws::Connect::ListQuickConnects;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has QuickConnectTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'QuickConnectTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQuickConnects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/quick-connects/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListQuickConnectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListQuickConnects - Arguments for method ListQuickConnects on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQuickConnects on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListQuickConnects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQuickConnects.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListQuickConnectsResponse = $connect->ListQuickConnects(
      InstanceId        => 'MyInstanceId',
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      QuickConnectTypes => [
        'USER', ...                          # values: USER, QUEUE, PHONE_NUMBER
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListQuickConnectsResponse->NextToken;
    my $QuickConnectSummaryList =
      $ListQuickConnectsResponse->QuickConnectSummaryList;

    # Returns a L<Paws::Connect::ListQuickConnectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListQuickConnects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 QuickConnectTypes => ArrayRef[Str|Undef]

The type of quick connect. In the Amazon Connect console, when you
create a quick connect, you are prompted to assign one of the following
types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQuickConnects in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

