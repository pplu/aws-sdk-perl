# Generated from default/object.tt
package Paws::RDS::OptionVersion;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::RDS::Types qw//;
  has IsDefault => (is => 'ro', isa => Bool);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'IsDefault' => {
                                'type' => 'Bool'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionVersion object:

  $service_obj->Method(Att1 => { IsDefault => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->IsDefault

=head1 DESCRIPTION

The version for an option. Option group option versions are returned by
the C<DescribeOptionGroupOptions> action.

=head1 ATTRIBUTES


=head2 IsDefault => Bool

  True if the version is the default version of the option, and otherwise
false.


=head2 Version => Str

  The version of the option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

