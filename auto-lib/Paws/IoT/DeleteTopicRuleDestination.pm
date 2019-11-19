
package Paws::IoT::DeleteTopicRuleDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTopicRuleDestination');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/destinations/{arn+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DeleteTopicRuleDestinationResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Arn' => 1
                  },
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'ParamInURI' => {
                    'Arn' => 'arn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteTopicRuleDestination - Arguments for method DeleteTopicRuleDestination on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTopicRuleDestination on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteTopicRuleDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTopicRuleDestination.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteTopicRuleDestinationResponse = $iot->DeleteTopicRuleDestination(
      Arn => 'MyAwsArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteTopicRuleDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the topic rule destination to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTopicRuleDestination in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

