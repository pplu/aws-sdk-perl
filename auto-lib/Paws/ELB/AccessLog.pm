package Paws::ELB::AccessLog;
  use Moose;
  has EmitInterval => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3BucketPrefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::AccessLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::AccessLog object:

  $service_obj->Method(Att1 => { EmitInterval => $value, ..., S3BucketPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::AccessLog object:

  $result = $service_obj->Method(...);
  $result->Att1->EmitInterval

=head1 DESCRIPTION

Information about the C<AccessLog> attribute.

=head1 ATTRIBUTES


=head2 EmitInterval => Int

  The interval for publishing the access logs. You can specify an
interval of either 5 minutes or 60 minutes.

Default: 60 minutes


=head2 B<REQUIRED> Enabled => Bool

  Specifies whether access logs are enabled for the load balancer.


=head2 S3BucketName => Str

  The name of the Amazon S3 bucket where the access logs are stored.


=head2 S3BucketPrefix => Str

  The logical hierarchy you created for your Amazon S3 bucket, for
example C<my-bucket-prefix/prod>. If the prefix is not provided, the
log is placed at the root level of the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

