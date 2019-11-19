# Generated from default/object.tt
package Paws::ServiceCatalog::LaunchPathSummary;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_ConstraintSummary/;
  has ConstraintSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ConstraintSummary]);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'ConstraintSummaries' => {
                                          'type' => 'ArrayRef[ServiceCatalog_ConstraintSummary]',
                                          'class' => 'Paws::ServiceCatalog::ConstraintSummary'
                                        },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::LaunchPathSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::LaunchPathSummary object:

  $service_obj->Method(Att1 => { ConstraintSummaries => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::LaunchPathSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstraintSummaries

=head1 DESCRIPTION

Summary information about a product path for a user.

=head1 ATTRIBUTES


=head2 ConstraintSummaries => ArrayRef[ServiceCatalog_ConstraintSummary]

  The constraints on the portfolio-product relationship.


=head2 Id => Str

  The identifier of the product path.


=head2 Name => Str

  The name of the portfolio to which the user was assigned.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

  The tags associated with this product path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

