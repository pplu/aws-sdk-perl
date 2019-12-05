package Paws::Kendra::DataSourceConfiguration;
  use Moose;
  has DatabaseConfiguration => (is => 'ro', isa => 'Paws::Kendra::DatabaseConfiguration');
  has S3Configuration => (is => 'ro', isa => 'Paws::Kendra::S3DataSourceConfiguration');
  has SharePointConfiguration => (is => 'ro', isa => 'Paws::Kendra::SharePointConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DataSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DataSourceConfiguration object:

  $service_obj->Method(Att1 => { DatabaseConfiguration => $value, ..., SharePointConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DataSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseConfiguration

=head1 DESCRIPTION

Configuration information for a Amazon Kendra data source.

=head1 ATTRIBUTES


=head2 DatabaseConfiguration => L<Paws::Kendra::DatabaseConfiguration>

  Provides information necessary to create a connector for a database.


=head2 S3Configuration => L<Paws::Kendra::S3DataSourceConfiguration>

  Provides information to create a connector for a document repository in
an Amazon S3 bucket.


=head2 SharePointConfiguration => L<Paws::Kendra::SharePointConfiguration>

  Provides information necessary to create a connector for a Microsoft
SharePoint site.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

