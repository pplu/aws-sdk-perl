package Paws::DMS::MongoDbSettings;
  use Moose;
  has AuthMechanism => (is => 'ro', isa => 'Str');
  has AuthSource => (is => 'ro', isa => 'Str');
  has AuthType => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DocsToInvestigate => (is => 'ro', isa => 'Str');
  has ExtractDocId => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has NestingLevel => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ServerName => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::MongoDbSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::MongoDbSettings object:

  $service_obj->Method(Att1 => { AuthMechanism => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::MongoDbSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthMechanism

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AuthMechanism => Str

  The authentication mechanism you use to access the MongoDB source
endpoint.

Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1

DEFAULT E<ndash> For MongoDB version 2.x, use MONGODB_CR. For MongoDB
version 3.x, use SCRAM_SHA_1. This attribute is not used when
authType=No.


=head2 AuthSource => Str

  The MongoDB database name. This attribute is not used when
C<authType=NO>.

The default is admin.


=head2 AuthType => Str

  The authentication type you use to access the MongoDB source endpoint.

Valid values: NO, PASSWORD

When NO is selected, user name and password parameters are not used and
can be empty.


=head2 DatabaseName => Str

  The database name on the MongoDB source endpoint.


=head2 DocsToInvestigate => Str

  Indicates the number of documents to preview to determine the document
organization. Use this attribute when C<NestingLevel> is set to ONE.

Must be a positive value greater than 0. Default value is 1000.


=head2 ExtractDocId => Str

  Specifies the document ID. Use this attribute when C<NestingLevel> is
set to NONE.

Default value is false.


=head2 KmsKeyId => Str

  The AWS KMS key identifier that is used to encrypt the content on the
replication instance. If you don't specify a value for the C<KmsKeyId>
parameter, then AWS DMS uses your default encryption key. AWS KMS
creates the default encryption key for your AWS account. Your AWS
account has a different default encryption key for each AWS Region.


=head2 NestingLevel => Str

  Specifies either document or table mode.

Valid values: NONE, ONE

Default value is NONE. Specify NONE to use document mode. Specify ONE
to use table mode.


=head2 Password => Str

  The password for the user account you use to access the MongoDB source
endpoint.


=head2 Port => Int

  The port value for the MongoDB source endpoint.


=head2 ServerName => Str

  The name of the server on the MongoDB source endpoint.


=head2 Username => Str

  The user name you use to access the MongoDB source endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

