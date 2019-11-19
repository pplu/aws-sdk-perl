# Generated from default/object.tt
package Paws::Shield::SubResourceSummary;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Shield::Types qw/Shield_SummarizedCounter Shield_SummarizedAttackVector/;
  has AttackVectors => (is => 'ro', isa => ArrayRef[Shield_SummarizedAttackVector]);
  has Counters => (is => 'ro', isa => ArrayRef[Shield_SummarizedCounter]);
  has Id => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'AttackVectors' => {
                                    'class' => 'Paws::Shield::SummarizedAttackVector',
                                    'type' => 'ArrayRef[Shield_SummarizedAttackVector]'
                                  },
               'Counters' => {
                               'type' => 'ArrayRef[Shield_SummarizedCounter]',
                               'class' => 'Paws::Shield::SummarizedCounter'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::SubResourceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::SubResourceSummary object:

  $service_obj->Method(Att1 => { AttackVectors => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::SubResourceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AttackVectors

=head1 DESCRIPTION

The attack information for the specified SubResource.

=head1 ATTRIBUTES


=head2 AttackVectors => ArrayRef[Shield_SummarizedAttackVector]

  The list of attack types and associated counters.


=head2 Counters => ArrayRef[Shield_SummarizedCounter]

  The counters that describe the details of the attack.


=head2 Id => Str

  The unique identifier (ID) of the C<SubResource>.


=head2 Type => Str

  The C<SubResource> type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

