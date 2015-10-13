package Paws::Firehose::RedshiftDestinationConfiguration;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str', required => 1);
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3Configuration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftDestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftDestinationConfiguration object:

  $service_obj->Method(Att1 => { ClusterJDBCURL => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftDestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterJDBCURL

=head1 DESCRIPTION

Describes the configuration of a destination in Amazon Redshift.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ClusterJDBCURL => Str

  The database connection string.

=head2 B<REQUIRED> CopyCommand => L<Paws::Firehose::CopyCommand>

  The C<COPY> command.

=head2 B<REQUIRED> Password => Str

  The user password.

=head2 B<REQUIRED> RoleARN => Str

  The ARN of the AWS credentials.

=head2 B<REQUIRED> S3Configuration => L<Paws::Firehose::S3DestinationConfiguration>

  The S3 configuration for the intermediate location from which Amazon
Redshift obtains data. Restrictions are described in the topic for
CreateDeliveryStream.

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
C<RedshiftDestinationConfiguration.S3Configuration> because the Amazon
Redshift C<COPY> operation that reads from the S3 bucket doesn't
support these compression formats.

=head2 B<REQUIRED> Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

