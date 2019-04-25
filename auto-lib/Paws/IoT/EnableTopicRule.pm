
package Paws::IoT::EnableTopicRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableTopicRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{ruleName}/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::EnableTopicRule - Arguments for method EnableTopicRule on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableTopicRule on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method EnableTopicRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableTopicRule.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->EnableTopicRule(
      RuleName => 'MyRuleName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/EnableTopicRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the topic rule to enable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableTopicRule in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

