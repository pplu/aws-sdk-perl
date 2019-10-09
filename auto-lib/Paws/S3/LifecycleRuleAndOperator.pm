package Paws::S3::LifecycleRuleAndOperator;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Tag/;
  has Prefix => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[S3_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::S3::Tag',
                           'type' => 'ArrayRef[S3_Tag]'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LifecycleRuleAndOperator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleRuleAndOperator object:

  $service_obj->Method(Att1 => { Prefix => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleRuleAndOperator object:

  $result = $service_obj->Method(...);
  $result->Att1->Prefix

=head1 DESCRIPTION

This is used in a Lifecycle Rule Filter to apply a logical AND to two
or more predicates. The Lifecycle Rule will apply to any object
matching all of the predicates configured inside the And operator.

=head1 ATTRIBUTES


=head2 Prefix => Str

  


=head2 Tags => ArrayRef[S3_Tag]

  All of these tags must exist in the object's tag set in order for the
rule to apply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

