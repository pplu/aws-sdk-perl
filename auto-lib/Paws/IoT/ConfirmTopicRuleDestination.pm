
package Paws::IoT::ConfirmTopicRuleDestination;
  use Moose;
  has ConfirmationToken => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'confirmationToken', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmTopicRuleDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/confirmdestination/{confirmationToken+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ConfirmTopicRuleDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ConfirmTopicRuleDestination - Arguments for method ConfirmTopicRuleDestination on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmTopicRuleDestination on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ConfirmTopicRuleDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmTopicRuleDestination.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ConfirmTopicRuleDestinationResponse = $iot->ConfirmTopicRuleDestination(
      ConfirmationToken => 'MyConfirmationToken',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ConfirmTopicRuleDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfirmationToken => Str

The token used to confirm ownership or access to the topic rule
confirmation URL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmTopicRuleDestination in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

