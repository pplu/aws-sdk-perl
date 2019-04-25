
package Paws::IoT::DeleteV2LoggingLevel;
  use Moose;
  has TargetName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetName', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteV2LoggingLevel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2LoggingLevel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteV2LoggingLevel - Arguments for method DeleteV2LoggingLevel on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteV2LoggingLevel on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteV2LoggingLevel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteV2LoggingLevel.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteV2LoggingLevel(
      TargetName => 'MyLogTargetName',
      TargetType => 'DEFAULT',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteV2LoggingLevel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetName => Str

The name of the resource for which you are configuring logging.



=head2 B<REQUIRED> TargetType => Str

The type of resource for which you are configuring logging. Must be
C<THING_Group>.

Valid values are: C<"DEFAULT">, C<"THING_GROUP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteV2LoggingLevel in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

