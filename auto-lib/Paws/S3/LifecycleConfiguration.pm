# Generated from default/object.tt
package Paws::S3::LifecycleConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_Rule/;
  has Rules => (is => 'ro', isa => ArrayRef[S3_Rule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Rules' => 'Rule'
                     },
  'IsRequired' => {
                    'Rules' => 1
                  },
  'types' => {
               'Rules' => {
                            'class' => 'Paws::S3::Rule',
                            'type' => 'ArrayRef[S3_Rule]'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LifecycleConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleConfiguration object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

Container for lifecycle rules. You can add as many as 1000 rules.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rules => ArrayRef[S3_Rule]

  Specifies lifecycle configuration rules for an Amazon S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

