package Paws::S3::ReplicationConfiguration;
  use Moose;
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::ReplicationRule]', request_name => 'Rule', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ReplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ReplicationConfiguration object:

  $service_obj->Method(Att1 => { Role => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Role

=head1 DESCRIPTION

Container for replication rules. You can add as many as 1,000 rules.
Total replication configuration size can be up to 2 MB.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Role => Str

  Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when
replicating the objects.


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::S3::ReplicationRule>]

  Container for information about a particular replication rule.
Replication configuration must have at least one rule and can contain
up to 1,000 rules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

