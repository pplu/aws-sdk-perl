
package Paws::Amplify::DeleteDomainAssociationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_DomainAssociation/;
  has DomainAssociation => (is => 'ro', isa => Amplify_DomainAssociation, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainAssociation' => {
                                        'type' => 'Amplify_DomainAssociation',
                                        'class' => 'Paws::Amplify::DomainAssociation'
                                      }
             },
  'NameInRequest' => {
                       'DomainAssociation' => 'domainAssociation'
                     },
  'IsRequired' => {
                    'DomainAssociation' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteDomainAssociationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainAssociation => Amplify_DomainAssociation




=head2 _request_id => Str


=cut

