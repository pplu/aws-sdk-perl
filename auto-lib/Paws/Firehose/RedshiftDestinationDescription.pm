package Paws::Firehose::RedshiftDestinationDescription;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str', required => 1);
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::S3DestinationDescription', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftDestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftDestinationDescription object:

  $service_obj->Method(Att1 => { ClusterJDBCURL => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftDestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterJDBCURL

=head1 DESCRIPTION

Describes a destination in Amazon Redshift.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterJDBCURL => Str

  The database connection string.


=head2 B<REQUIRED> CopyCommand => L<Paws::Firehose::CopyCommand>

  The C<COPY> command.


=head2 B<REQUIRED> RoleARN => Str

  The ARN of the AWS credentials.


=head2 B<REQUIRED> S3DestinationDescription => L<Paws::Firehose::S3DestinationDescription>

  The Amazon S3 destination.


=head2 B<REQUIRED> Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

