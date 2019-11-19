# Generated from default/object.tt
package Paws::CloudSearchDomain::Hit;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearchDomain::Types qw/CloudSearchDomain_Highlights CloudSearchDomain_Fields CloudSearchDomain_Exprs/;
  has Exprs => (is => 'ro', isa => CloudSearchDomain_Exprs);
  has Fields => (is => 'ro', isa => CloudSearchDomain_Fields);
  has Highlights => (is => 'ro', isa => CloudSearchDomain_Highlights);
  has Id => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Id' => 'id',
                       'Exprs' => 'exprs',
                       'Fields' => 'fields',
                       'Highlights' => 'highlights'
                     },
  'types' => {
               'Fields' => {
                             'type' => 'CloudSearchDomain_Fields',
                             'class' => 'Paws::CloudSearchDomain::Fields'
                           },
               'Exprs' => {
                            'type' => 'CloudSearchDomain_Exprs',
                            'class' => 'Paws::CloudSearchDomain::Exprs'
                          },
               'Highlights' => {
                                 'class' => 'Paws::CloudSearchDomain::Highlights',
                                 'type' => 'CloudSearchDomain_Highlights'
                               },
               'Id' => {
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

Paws::CloudSearchDomain::Hit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::Hit object:

  $service_obj->Method(Att1 => { Exprs => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::Hit object:

  $result = $service_obj->Method(...);
  $result->Att1->Exprs

=head1 DESCRIPTION

Information about a document that matches the search request.

=head1 ATTRIBUTES


=head2 Exprs => CloudSearchDomain_Exprs

  The expressions returned from a document that matches the search
request.


=head2 Fields => CloudSearchDomain_Fields

  The fields returned from a document that matches the search request.


=head2 Highlights => CloudSearchDomain_Highlights

  The highlights returned from a document that matches the search
request.


=head2 Id => Str

  The document ID of a document that matches the search request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

