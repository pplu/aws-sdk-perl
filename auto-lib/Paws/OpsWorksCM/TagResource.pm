
package Paws::OpsWorksCM::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::TagResource - Arguments for method TagResource on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS OpsWorks CM|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $TagResourceResponse = $opsworks -cm->TagResource(
      ResourceArn => 'MyAWSOpsWorksCMResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_TagResource.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Number (ARN) of a resource to which you want to
apply tags. For example,
C<arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE>.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::OpsWorksCM::Tag>]

A map that contains tag keys and tag values to attach to AWS
OpsWorks-CM servers or backups.

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

A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM
server or backup.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

