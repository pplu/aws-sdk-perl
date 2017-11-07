package Paws::ElastiCache::EC2SecurityGroup;
  use Moose;
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::EC2SecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::EC2SecurityGroup object:

  $service_obj->Method(Att1 => { EC2SecurityGroupName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::EC2SecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2SecurityGroupName

=head1 DESCRIPTION

Provides ownership and status information for an Amazon EC2 security
group.

=head1 ATTRIBUTES


=head2 EC2SecurityGroupName => Str

  The name of the Amazon EC2 security group.


=head2 EC2SecurityGroupOwnerId => Str

  The AWS account ID of the Amazon EC2 security group owner.


=head2 Status => Str

  The status of the Amazon EC2 security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

