package Paws::MTurk::QualificationRequirement;
  use Moose;
  has ActionsGuarded => (is => 'ro', isa => 'Str');
  has Comparator => (is => 'ro', isa => 'Str', required => 1);
  has IntegerValues => (is => 'ro', isa => 'ArrayRef[Int]');
  has LocaleValues => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::Locale]');
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);
  has RequiredToPreview => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::QualificationRequirement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::QualificationRequirement object:

  $service_obj->Method(Att1 => { ActionsGuarded => $value, ..., RequiredToPreview => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::QualificationRequirement object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionsGuarded

=head1 DESCRIPTION

The QualificationRequirement data structure describes a Qualification
that a Worker must have before the Worker is allowed to accept a HIT. A
requirement may optionally state that a Worker must have the
Qualification in order to preview the HIT, or see the HIT in search
results.

=head1 ATTRIBUTES


=head2 ActionsGuarded => Str

  Setting this attribute prevents Workers whose Qualifications do not
meet this QualificationRequirement from taking the specified action.
Valid arguments include "Accept" (Worker cannot accept the HIT, but can
preview the HIT and see it in their search results), "PreviewAndAccept"
(Worker cannot accept or preview the HIT, but can see the HIT in their
search results), and "DiscoverPreviewAndAccept" (Worker cannot accept,
preview, or see the HIT in their search results). It's possible for you
to create a HIT with multiple QualificationRequirements (which can have
different values for the ActionGuarded attribute). In this case, the
Worker is only permitted to perform an action when they have met all
QualificationRequirements guarding the action. The actions in the order
of least restrictive to most restrictive are Discover, Preview and
Accept. For example, if a Worker meets all QualificationRequirements
that are set to DiscoverPreviewAndAccept, but do not meet all
requirements that are set with PreviewAndAccept, then the Worker will
be able to Discover, i.e. see the HIT in their search result, but will
not be able to Preview or Accept the HIT. ActionsGuarded should not be
used in combination with the C<RequiredToPreview> field.


=head2 B<REQUIRED> Comparator => Str

  The kind of comparison to make against a Qualification's value. You can
compare a Qualification's value to an IntegerValue to see if it is
LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo,
EqualTo, or NotEqualTo the IntegerValue. You can compare it to a
LocaleValue to see if it is EqualTo, or NotEqualTo the LocaleValue. You
can check to see if the value is In or NotIn a set of IntegerValue or
LocaleValue values. Lastly, a Qualification requirement can also test
if a Qualification Exists or DoesNotExist in the user's profile,
regardless of its value.


=head2 IntegerValues => ArrayRef[Int]

  The integer value to compare against the Qualification's value.
IntegerValue must not be present if Comparator is Exists or
DoesNotExist. IntegerValue can only be used if the Qualification type
has an integer value; it cannot be used with the Worker_Locale
QualificationType ID. When performing a set comparison by using the In
or the NotIn comparator, you can use up to 15 IntegerValue elements in
a QualificationRequirement data structure.


=head2 LocaleValues => ArrayRef[L<Paws::MTurk::Locale>]

  The locale value to compare against the Qualification's value. The
local value must be a valid ISO 3166 country code or supports ISO
3166-2 subdivisions. LocaleValue can only be used with a Worker_Locale
QualificationType ID. LocaleValue can only be used with the EqualTo,
NotEqualTo, In, and NotIn comparators. You must only use a single
LocaleValue element when using the EqualTo or NotEqualTo comparators.
When performing a set comparison by using the In or the NotIn
comparator, you can use up to 30 LocaleValue elements in a
QualificationRequirement data structure.


=head2 B<REQUIRED> QualificationTypeId => Str

  The ID of the Qualification type for the requirement.


=head2 RequiredToPreview => Bool

  DEPRECATED: Use the C<ActionsGuarded> field instead. If
RequiredToPreview is true, the question data for the HIT will not be
shown when a Worker whose Qualifications do not meet this requirement
tries to preview the HIT. That is, a Worker's Qualifications must meet
all of the requirements for which RequiredToPreview is true in order to
preview the HIT. If a Worker meets all of the requirements where
RequiredToPreview is true (or if there are no such requirements), but
does not meet all of the requirements for the HIT, the Worker will be
allowed to preview the HIT's question data, but will not be allowed to
accept and complete the HIT. The default is false. This should not be
used in combination with the C<ActionsGuarded> field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

