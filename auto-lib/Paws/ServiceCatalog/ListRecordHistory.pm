# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::ListRecordHistory;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ListRecordHistorySearchFilter ServiceCatalog_AccessLevelFilter/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has AccessLevelFilter => (is => 'ro', isa => ServiceCatalog_AccessLevelFilter, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has PageToken => (is => 'ro', isa => Str, predicate => 1);
  has SearchFilter => (is => 'ro', isa => ServiceCatalog_ListRecordHistorySearchFilter, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListRecordHistory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::ListRecordHistoryOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageSize' => {
                               'type' => 'Int'
                             },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'SearchFilter' => {
                                   'class' => 'Paws::ServiceCatalog::ListRecordHistorySearchFilter',
                                   'type' => 'ServiceCatalog_ListRecordHistorySearchFilter'
                                 },
               'PageToken' => {
                                'type' => 'Str'
                              },
               'AccessLevelFilter' => {
                                        'class' => 'Paws::ServiceCatalog::AccessLevelFilter',
                                        'type' => 'ServiceCatalog_AccessLevelFilter'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListRecordHistory - Arguments for method ListRecordHistory on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecordHistory on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListRecordHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecordHistory.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListRecordHistoryOutput = $servicecatalog->ListRecordHistory(
      AcceptLanguage    => 'MyAcceptLanguage',    # OPTIONAL
      AccessLevelFilter => {
        Key => 'Account',    # values: Account, Role, User; OPTIONAL
        Value => 'MyAccessLevelFilterValue',    # OPTIONAL
      },    # OPTIONAL
      PageSize     => 1,                # OPTIONAL
      PageToken    => 'MyPageToken',    # OPTIONAL
      SearchFilter => {
        Key   => 'MySearchFilterKey',      # OPTIONAL
        Value => 'MySearchFilterValue',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextPageToken = $ListRecordHistoryOutput->NextPageToken;
    my $RecordDetails = $ListRecordHistoryOutput->RecordDetails;

    # Returns a L<Paws::ServiceCatalog::ListRecordHistoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListRecordHistory>

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




=head2 AccessLevelFilter => ServiceCatalog_AccessLevelFilter

The access level to use to obtain results. The default is C<User>.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 SearchFilter => ServiceCatalog_ListRecordHistorySearchFilter

The search filter to scope the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecordHistory in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

