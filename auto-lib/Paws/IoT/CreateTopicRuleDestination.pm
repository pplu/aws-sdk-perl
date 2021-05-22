
package Paws::IoT::CreateTopicRuleDestination;
  use Moose;
  has DestinationConfiguration => (is => 'ro', isa => 'Paws::IoT::TopicRuleDestinationConfiguration', traits => ['NameInRequest'], request_name => 'destinationConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopicRuleDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateTopicRuleDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateTopicRuleDestination - Arguments for method CreateTopicRuleDestination on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTopicRuleDestination on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateTopicRuleDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTopicRuleDestination.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateTopicRuleDestinationResponse = $iot->CreateTopicRuleDestination(
      DestinationConfiguration => {
        HttpUrlConfiguration => {
          ConfirmationUrl => 'MyUrl',    # max: 2000

        },    # OPTIONAL
        VpcConfiguration => {
          RoleArn        => 'MyAwsArn',
          SubnetIds      => [ 'MySubnetId', ... ],
          VpcId          => 'MyVpcId',
          SecurityGroups => [ 'MySecurityGroupId', ... ],    # OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $TopicRuleDestination =
      $CreateTopicRuleDestinationResponse->TopicRuleDestination;

    # Returns a L<Paws::IoT::CreateTopicRuleDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateTopicRuleDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationConfiguration => L<Paws::IoT::TopicRuleDestinationConfiguration>

The topic rule destination configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTopicRuleDestination in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

