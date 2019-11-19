package Paws::S3::DeleteMarkerReplication;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteMarkerReplication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::DeleteMarkerReplication object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::DeleteMarkerReplication object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Specifies whether Amazon S3 replicates the delete markers. If you
specify a C<Filter>, you must specify this element. However, in the
latest version of replication configuration (when C<Filter> is
specified), Amazon S3 doesn't replicate delete markers. Therefore, the
C<DeleteMarkerReplication> element can contain only
E<lt>StatusE<gt>DisabledE<lt>/StatusE<gt>. For an example
configuration, see Basic Rule Configuration
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config).

If you don't specify the Filter element, Amazon S3 assumes the
replication configuration is the earlier version, V1. In the earlier
version, Amazon S3 handled replication of delete markers differently.
For more information, see Backward Compatibility
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).

=head1 ATTRIBUTES


=head2 Status => Str

  Indicates whether to replicate delete markers.

In the current implementation, Amazon S3 doesn't replicate the delete
markers. The status must be C<Disabled>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

