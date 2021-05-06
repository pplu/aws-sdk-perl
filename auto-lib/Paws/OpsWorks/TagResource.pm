
package Paws::OpsWorks::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::OpsWorks::Tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::TagResource - Arguments for method TagResource on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->TagResource(
      ResourceArn => 'MyResourceArn',
      Tags        => { 'MyTagKey' => 'MyTagValue', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The stack or layer's Amazon Resource Number (ARN).



=head2 B<REQUIRED> Tags => L<Paws::OpsWorks::Tags>

A map that contains tag keys and tag values that are attached to a
stack or layer.

=over

=item *

The key cannot be empty.

=item *

The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: C<+ - = . _ : />

=item *

The value can be a maximum 255 characters, and contain only Unicode
letters, numbers, or separators, or the following special characters:
C<+ - = . _ : />

=item *

Leading and trailing white spaces are trimmed from both the key and
value.

=item *

A maximum of 40 tags is allowed for any resource.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

