package Paws::Datasync::Ec2Config;
  use Moose;
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SubnetArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::Ec2Config

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::Ec2Config object:

  $service_obj->Method(Att1 => { SecurityGroupArns => $value, ..., SubnetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::Ec2Config object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupArns

=head1 DESCRIPTION

The subnet and the security group that DataSync uses to access target
EFS file system. The subnet must have at least one mount target for
that file system. The security group that you provide needs to be able
to communicate with the security group on the mount target in the
subnet specified.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARNs) of the security groups that are
configured for the Amazon EC2 resource.


=head2 B<REQUIRED> SubnetArn => Str

  The ARN of the subnet and the security group that DataSync uses to
access the target EFS file system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

