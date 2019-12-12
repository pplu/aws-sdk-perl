package Paws::Kendra::SharePointConfiguration;
  use Moose;
  has CrawlAttachments => (is => 'ro', isa => 'Bool');
  has DocumentTitleFieldName => (is => 'ro', isa => 'Str');
  has FieldMappings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceToIndexFieldMapping]');
  has SecretArn => (is => 'ro', isa => 'Str', required => 1);
  has SharePointVersion => (is => 'ro', isa => 'Str', required => 1);
  has Urls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Kendra::DataSourceVpcConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::SharePointConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::SharePointConfiguration object:

  $service_obj->Method(Att1 => { CrawlAttachments => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::SharePointConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlAttachments

=head1 DESCRIPTION

Provides configuration information for connecting to a Microsoft
SharePoint data source.

=head1 ATTRIBUTES


=head2 CrawlAttachments => Bool

  C<TRUE> to include attachments to documents stored in your Microsoft
SharePoint site in the index; otherwise, C<FALSE>.


=head2 DocumentTitleFieldName => Str

  The Microsoft SharePoint attribute field that contains the title of the
document.


=head2 FieldMappings => ArrayRef[L<Paws::Kendra::DataSourceToIndexFieldMapping>]

  A list of C<DataSourceToIndexFieldMapping> objects that map Microsoft
SharePoint attributes to custom fields in the Amazon Kendra index. You
must first create the index fields using the operation before you map
SharePoint attributes. For more information, see Mapping Data Source
Fields
(https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html).


=head2 B<REQUIRED> SecretArn => Str

  The Amazon Resource Name (ARN) of credentials stored in AWS Secrets
Manager. The credentials should be a user/password pair. For more
information, see Using a Microsoft SharePoint Data Source
(https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html).
For more information about AWS Secrets Manager, see What Is AWS Secrets
Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)
in the I<AWS Secrets Manager> user guide.


=head2 B<REQUIRED> SharePointVersion => Str

  The version of Microsoft SharePoint that you are using as a data
source.


=head2 B<REQUIRED> Urls => ArrayRef[Str|Undef]

  The URLs of the Microsoft SharePoint site that contains the documents
that should be indexed.


=head2 VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

