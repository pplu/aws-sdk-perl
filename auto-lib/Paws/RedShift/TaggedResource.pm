package Paws::RedShift::TaggedResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Tag => (is => 'ro', isa => 'Paws::RedShift::Tag');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TaggedResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::TaggedResource object:

  $service_obj->Method(Att1 => { ResourceName => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::TaggedResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceName

=head1 DESCRIPTION

A tag and its associated resource.

=head1 ATTRIBUTES


=head2 ResourceName => Str

  The Amazon Resource Name (ARN) with which the tag is associated, for
example: C<arn:aws:redshift:us-east-1:123456789:cluster:t1>.


=head2 ResourceType => Str

  The type of resource with which the tag is associated. Valid resource
types are:

=over

=item *

Cluster

=item *

CIDR/IP

=item *

EC2 security group

=item *

Snapshot

=item *

Cluster security group

=item *

Subnet group

=item *

HSM connection

=item *

HSM certificate

=item *

Parameter group

=back

For more information about Amazon Redshift resource types and
constructing ARNs, go to Constructing an Amazon Redshift Amazon
Resource Name (ARN)
(http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions)
in the Amazon Redshift Cluster Management Guide.


=head2 Tag => L<Paws::RedShift::Tag>

  The tag for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

