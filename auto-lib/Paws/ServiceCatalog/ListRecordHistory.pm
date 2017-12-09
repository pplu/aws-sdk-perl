
package Paws::ServiceCatalog::ListRecordHistory;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AccessLevelFilter => (is => 'ro', isa => 'Paws::ServiceCatalog::AccessLevelFilter');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has SearchFilter => (is => 'ro', isa => 'Paws::ServiceCatalog::ListRecordHistorySearchFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecordHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListRecordHistoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListRecordHistory - Arguments for method ListRecordHistory on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecordHistory on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method ListRecordHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecordHistory.

As an example:

  $service_obj->ListRecordHistory(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>

The access level to use to obtain results. The default is C<User>.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 SearchFilter => L<Paws::ServiceCatalog::ListRecordHistorySearchFilter>

The search filter to scope the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecordHistory in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

