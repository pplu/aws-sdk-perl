
package Paws::IoTWireless::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::TagResource - Arguments for method TagResource on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $TagResourceResponse = $api . iotwireless->TagResource(
      ResourceArn => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to add tags to.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

Adds to or modifies the tags of the given resource. Tags are metadata
that you can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

