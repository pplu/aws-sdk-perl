# Generated from default/object.tt
package Paws::Amplify::SubDomainSetting;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has BranchName => (is => 'ro', isa => Str, required => 1);
  has Prefix => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'BranchName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Prefix' => 'prefix',
                       'BranchName' => 'branchName'
                     },
  'IsRequired' => {
                    'BranchName' => 1,
                    'Prefix' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::SubDomainSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::SubDomainSetting object:

  $service_obj->Method(Att1 => { BranchName => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::SubDomainSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchName

=head1 DESCRIPTION

Setting for the Subdomain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchName => Str

  Branch name setting for the Subdomain.


=head2 B<REQUIRED> Prefix => Str

  Prefix setting for the Subdomain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

