
package Paws::Amplify::ListDomainAssociationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_DomainAssociation/;
  has DomainAssociations => (is => 'ro', isa => ArrayRef[Amplify_DomainAssociation], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainAssociations' => 1
                  },
  'NameInRequest' => {
                       'DomainAssociations' => 'domainAssociations',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DomainAssociations' => {
                                         'class' => 'Paws::Amplify::DomainAssociation',
                                         'type' => 'ArrayRef[Amplify_DomainAssociation]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListDomainAssociationsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainAssociations => ArrayRef[Amplify_DomainAssociation]

List of Domain Associations.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

